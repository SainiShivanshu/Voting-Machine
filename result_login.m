function varargout = result_login(varargin)
% RESULT_LOGIN MATLAB code for result_login.fig
%      RESULT_LOGIN, by itself, creates a new RESULT_LOGIN or raises the existing
%      singleton*.
%
%      H = RESULT_LOGIN returns the handle to a new RESULT_LOGIN or the handle to
%      the existing singleton*.
%
%      RESULT_LOGIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULT_LOGIN.M with the given input arguments.
%
%      RESULT_LOGIN('Property','Value',...) creates a new RESULT_LOGIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before result_login_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to result_login_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help result_login

% Last Modified by GUIDE v2.5 21-Aug-2021 22:25:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @result_login_OpeningFcn, ...
                   'gui_OutputFcn',  @result_login_OutputFcn, ...
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


% --- Executes just before result_login is made visible.
function result_login_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to result_login (see VARARGIN)

% Choose default command line output for result_login
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes result_login wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = result_login_OutputFcn(hObject, eventdata, handles) 
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
w=getappdata(0,'w');

if w==0
  CreateStruct.Interpreter = 'tex';
CreateStruct.WindowStyle = 'modal';
msgbox('\fontsize{12}Results not declared yet.', CreateStruct)
else if w==1
        voting_machine_3
    end
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq()
EC_head_login



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
closereq()
main




% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
imshow('C:\Users\shivanshu\Desktop\New folder\EC.jpg')
