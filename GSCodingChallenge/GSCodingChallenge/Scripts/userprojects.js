
//Parse Json Date
function parseJsonDate(inputDate) {
    var dregex = /\/Date\((\d*)\)\//;
    if (dregex.test(inputDate)) {
        var dateVal = new Date(parseInt(dregex.exec(inputDate)[1]));
        return dateVal;
    }
    else {
        return inputDate;
    }
}

//Cast date to friendly format
function castDateFormat(inputDate) {
    var dateVal = parseJsonDate(inputDate);
    return dateVal.getMonth() + "/" + dateVal.getDate() + "/" + dateVal.getFullYear();
}

//Get dates difference

function dateDiff(startDate, assignedDate) {
    var diff = startDate - assignedDate;
    var fotmatedDiff = diff / 1000 / 60 / 60 / 24;
    if (fotmatedDiff < 0) {
        return "Started";
    }
    else {
        return fotmatedDiff;
    }
}