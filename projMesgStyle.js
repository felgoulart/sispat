function mesgStyleMenu(rc) {
    // color theme: Green
    if (rc == '0') {bck = '#B2F0D1';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#33D685';img = 'btMessage_off.gif';
    } else {bck = '#00CC66';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
    selSrcImg('cadForm:iMessage', img);
}
function mesgStyleStubMenu(rc,stub) {
    // color theme: Green
    if (rc == '0') {bck = '#B2F0D1';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#33D685';img = 'btMessage_off.gif';
    } else {bck = '#00CC66';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var'+stub)) {el('cadForm:mesg_var'+stub).style.background = bck;	}
    selSrcImg('cadForm:iMessage'+stub, img);
}
function mesgStyleAsst(rc) {
    // color theme: Blue
    if (rc == '0') {bck = '#E7ECF2';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#99FFFF';img = 'btMessage_off.gif';
    } else {bck = '#00FFFF';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
    selSrcImg('cadForm:iMessage', img);
}
function mesgStyleStubAsst(rc,stub) {
    // color theme: Blue
    if (rc == '0') {bck = '#E7ECF2';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#99FFFF';img = 'btMessage_off.gif';
    } else {bck = '#00FFFF';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var'+stub)) {el('cadForm:mesg_var'+stub).style.background = bck;	}
    selSrcImg('cadForm:iMessage'+stub, img);
}
function mesgStyleChld(rc) {
    // color theme: Yellow
    if (rc == '0') {bck = '#FFFFE0';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#FFFF99';img = 'btMessage_off.gif';
    } else {bck = '#FFFF00';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
    selSrcImg('cadForm:iMessage', img);
}
function mesgStyleStubChld(rc,stub) {
    // color theme: Yellow
    if (rc == '0') {bck = '#FFFFE0';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#FFFF99';img = 'btMessage_off.gif';
    } else {bck = '#FFFF00';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var'+stub)) {el('cadForm:mesg_var'+stub).style.background = bck;	}
    selSrcImg('cadForm:iMessage'+stub, img);
}
function mesgStyleInvt(rc) {
    // color theme: Orange
    if (rc == '0') {bck = '#FFE0B2';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#FFAD33';img = 'btMessage_off.gif';
    } else {bck = '#FF9900';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
    selSrcImg('cadForm:iMessage', img);
}
function mesgStyleStubInvt(rc,stub) {
    // color theme: Orange
    if (rc == '0') {bck = '#FFE0B2';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#FFAD33';img = 'btMessage_off.gif';
    } else {bck = '#FF9900';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var'+stub)) {el('cadForm:mesg_var'+stub).style.background = bck;	}
    selSrcImg('cadForm:iMessage'+stub, img);
}
function mesgStyleSecy(rc) {
    // color theme: Red
    if (rc == '0') {bck = '#FFB2B2';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#FF7070';img = 'btMessage_off.gif';
    } else {bck = '#FF0000';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
    selSrcImg('cadForm:iMessage', img);
}
function mesgStyleStubSecy(rc,stub) {
    // color theme: Red
    if (rc == '0') {bck = '#FFB2B2';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#FF7070';img = 'btMessage_off.gif';
    } else {bck = '#FF0000';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var'+stub)) {el('cadForm:mesg_var'+stub).style.background = bck;	}
    selSrcImg('cadForm:iMessage'+stub, img);
}
function mesgStyleHelp(rc) {
    // color theme: Gray
    if (rc == '0') {bck = '#FAF8F8';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#D3D3D3';img = 'btMessage_off.gif';
    } else {bck = '#D3D3D3';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
    selSrcImg('cadForm:iMessage', img);
}
function mesgStyleStubHelp(rc,stub) {
    // color theme: Gray
    if (rc == '0') {bck = '#FAF8F8';img = 'btMessage_off.gif';} else
    if (rc == '777') {	bck = '#D3D3D3';img = 'btMessage_off.gif';
    } else {bck = '#D3D3D3';  img = 'btMessage.gif';}
    if (el('cadForm:mesg_var'+stub)) {el('cadForm:mesg_var'+stub).style.background = bck;	}
    selSrcImg('cadForm:iMessage'+stub, img);
}
