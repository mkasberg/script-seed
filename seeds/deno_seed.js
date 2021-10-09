Deno.args.forEach((arg) => {
    switch (arg) {
        case '-sn':
        case '--seed-name':
            console.log('deno seed');
            break;
        case '-n':
        case '--name':
            console.log('Vignesh Raj');
            break;
        case '-hy':
        case '--hacktober-year':
            console.log('2021');
            break;
    }
});
