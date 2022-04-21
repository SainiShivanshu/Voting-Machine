function varargout = voting_machine_1(varargin)
% VOTING_MACHINE_1 MATLAB code for voting_machine_1.fig
%      VOTING_MACHINE_1, by itself, creates a new VOTING_MACHINE_1 or raises the existing
%      singleton*.
%
%      H = VOTING_MACHINE_1 returns the handle to a new VOTING_MACHINE_1 or the handle to
%      the existing singleton*.
%
%      VOTING_MACHINE_1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VOTING_MACHINE_1.M with the given input arguments.
%
%      VOTING_MACHINE_1('Property','Value',...) creates a new VOTING_MACHINE_1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before voting_machine_1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to voting_machine_1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help voting_machine_1

% Last Modified by GUIDE v2.5 21-Aug-2021 20:08:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @voting_machine_1_OpeningFcn, ...
                   'gui_OutputFcn',  @voting_machine_1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before voting_machine_1 is made visible.
function voting_machine_1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to voting_machine_1 (see VARARGIN)

% Choose default command line output for voting_machine_1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global aap;
global bjp;
global bsp;
global inc;
global oth;

a=getappdata(0,'a');
if a==0
    aap=0;
    bjp=0;
    bsp=0;
    inc=0;
    oth=0;
    setappdata(0,'aap',aap);
setappdata(0,'bjp',bjp);
setappdata(0,'bsp',bsp);
setappdata(0,'inc',inc);
setappdata(0,'oth',oth);

aap=getappdata(0,'aap');
bjp=getappdata(0,'bjp');
bsp=getappdata(0,'bsp');
inc=getappdata(0,'inc');
oth=getappdata(0,'oth');
    
else
setappdata(0,'aap',aap);
setappdata(0,'bjp',bjp);
setappdata(0,'bsp',bsp);
setappdata(0,'inc',inc);
setappdata(0,'oth',oth);

aap=getappdata(0,'aap');
bjp=getappdata(0,'bjp');
bsp=getappdata(0,'bsp');
inc=getappdata(0,'inc');
oth=getappdata(0,'oth');
end
% UIWAIT makes voting_machine_1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = voting_machine_1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global aap;
global bjp;
global bsp;
global inc;
global oth;
aap=aap+1;

for i=1:1:1
    % sound generating code
 Fs=11000;
    t=linspace(0,6,Fs);
   w=2*pi*1000;  
   s=sin(w*t);
sound(s,Fs);
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global aap;
global bjp;
global bsp;
global inc;
global oth;
bjp=bjp+1;
for i=1:1:1
 Fs=11000;
    t=linspace(0,6,Fs);
   w=2*pi*1000;  
   s=sin(w*t);
sound(s,Fs);
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global aap;
global bjp;
global bsp;
global inc;
global oth;
bsp=bsp+1;
for i=1:1:1
 Fs=11000;
    t=linspace(0,6,Fs);
   w=2*pi*1000;  
   s=sin(w*t);
sound(s,Fs);
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global aap;
global bjp;
global bsp;
global inc;
global oth;
inc=inc+1;
for i=1:1:1
 Fs=11000;
    t=linspace(0,6,Fs);
   w=2*pi*1000;  
   s=sin(w*t);
sound(s,Fs);
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global aap;
global bjp;
global bsp;
global inc;
global oth;
oth=oth+1;
for i=1:1:1
 Fs=11000;
    t=linspace(0,6,Fs);
   w=2*pi*1000;  
   s=sin(w*t);
sound(s,Fs);
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global aap;
global bjp;
global bsp;
global inc;
global oth;

setappdata(0,'aap',aap);
setappdata(0,'bjp',bjp);
setappdata(0,'bsp',bsp);
setappdata(0,'inc',inc);
setappdata(0,'oth',oth);
closereq()  % to close voting_machine_1 gui
main % to open main gui


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
imshow('C:\Users\shivanshu\Desktop\New folder\aap.jpg');


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
imshow('C:\Users\shivanshu\Desktop\New folder\bjp.jpg');





% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4
imshow('C:\Users\shivanshu\Desktop\New folder\inc.jpg');


% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes6
imshow('C:\Users\shivanshu\Desktop\New folder\2.png');


% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes5
imshow('C:\Users\shivanshu\Desktop\New folder\samaj.png');


% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes8
imshow('C:\Users\shivanshu\Desktop\New folder\aap.jpg');


% --- Executes during object creation, after setting all properties.
function axes9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes9
imshow('C:\Users\shivanshu\Desktop\New folder\bjp.jpg');


% --- Executes during object creation, after setting all properties.
function axes10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes10
imshow('C:\Users\shivanshu\Desktop\New folder\2.png');


% --- Executes during object creation, after setting all properties.
function axes11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes11
imshow('C:\Users\shivanshu\Desktop\New folder\inc.jpg');


% --- Executes during object creation, after setting all properties.
function axes12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes12
imshow('C:\Users\shivanshu\Desktop\New folder\samaj.png');
