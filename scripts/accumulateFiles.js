const path = require('path');
const fs = require('fs');

const databasePath = path.join(__dirname, '..', 'database', 'schema');
const entitiesPath = path.join(databasePath, 'entities');
const relationshipsPath = path.join(databasePath, 'relationships');

// create file
const outDir = path.join(__dirname, '..', 'out');
if (!fs.existsSync(outDir)) {
  fs.mkdirSync(outDir);
}

const fileTypes = ['alter.sql', 'insert.sql', 'table.sql', 'query.sql', 'views.sql']

for(let fileType of fileTypes) {
    const outputPath = path.join(outDir, fileType);
    if(fs.existsSync(outputPath)) {
        fs.unlinkSync(outputPath);
    }
    fs.writeFileSync(outputPath, '');
}

const outputFilesStreams = fileTypes.map(fileType => fs.createWriteStream(path.join(outDir, fileType), {flags: 'a'}));

function processPath(inputPath) {
    if(fs.statSync(inputPath).isDirectory()) {
        const files = fs.readdirSync(inputPath);
        for(let file of files) {
            processPath(path.join(inputPath, file));
        }
    } else {
        const fileName = path.basename(inputPath);
        if(fileTypes.includes(fileName)) {
            const content = fs.readFileSync(inputPath, 'utf8');
            if(content.trim() === '') return;

            const stream = outputFilesStreams[fileTypes.indexOf(fileName)]
            stream.write('-- ' + path.dirname(inputPath).split(path.sep).at(-1) + '\n\n')
            stream.write(content);
            stream.write('\n\n');
        }
    }
}

processPath(entitiesPath);
processPath(relationshipsPath);


