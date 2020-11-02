function varargout = RotateCube(varargin)
% ROTATECUBE MATLAB code for RotateCube.fig
%      ROTATECUBE, by itself, creates a new ROTATECUBE or raises the existing
%      singleton*.
%
%      H = ROTATECUBE returns the handle to a new ROTATECUBE or the handle to
%      the existing singleton*.
%
%      ROTATECUBE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROTATECUBE.M with the given input arguments.
%
%      ROTATECUBE('Property','Value',...) creates a new ROTATECUBE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RotateCube_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RotateCube_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RotateCube

% Last Modified by GUIDE v2.5 11-Jun-2018 18:39:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RotateCube_OpeningFcn, ...
                   'gui_OutputFcn',  @RotateCube_OutputFcn, ...
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

% --- Executes just before RotateCube is made visible.
function RotateCube_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RotateCube (see VARARGIN)

% Choose default command line output for RotateCube
handles.output = hObject;

% Update handles structure

guidata(hObject, handles);
CubeShape
set(handles.Foward, 'Value', 0)
set(handles.Inverse, 'Value', 0)
set(handles.RotateNumber, 'String', '')
set(handles.Sol, 'String', '')


% UIWAIT makes RotateCube wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RotateCube_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function RotateNumber_Callback(hObject, eventdata, handles)
% hObject    handle to RotateNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of RotateNumber as text
%        str2double(get(hObject,'String')) returns contents of RotateNumber as a double


% --- Executes during object creation, after setting all properties.
function RotateNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RotateNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Rotatebtn.
function Rotatebtn_Callback(hObject, eventdata, handles)
% hObject    handle to Rotatebtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Num=get(handles.RotateNumber,'String');
Num=str2num(Num);
if Num==0
    mydialog(2);
elseif Num > 0
    RandomRotate(Num)
else
    mydialog(1);
end


% --- Executes on button press in Solvebtn.
function Solvebtn_Callback(hObject, eventdata, handles)
% hObject    handle to Solvebtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Rend;
global Rnum;
Rnum=0;
tic
set(handles.Sol, 'String', '1단계 알고리즘 : 윗면 십자 맞추기')
step1
pause(1);
set(handles.Sol, 'String', '2단계 알고리즘 : 윗면 완성하기')
step2
pause(1);
set(handles.Sol, 'String', '3단계 알고리즘 : 뒤집은 후 1,2층  맞추기')
step3
pause(1);
set(handles.Sol, 'String', '4단계 알고리즘 : 윗면 십자 맞추기')
step4
pause(1);
set(handles.Sol, 'String', '5단계 알고리즘 : 십자가의 옆면 맞추기')
step5
pause(1);
set(handles.Sol, 'String', '6단계 알고리즘 : 윗면 완성하기')
step6
pause(1);
set(handles.Sol, 'String', '7단계 알고리즘 : 마무리')
step7
Rend = toc;
Rnum=Rnum-6;
pause(0.5);
set(handles.Sol, 'String', '완료')
mydialog(3)






% --- Executes on button press in Foward.
function Foward_Callback(hObject, eventdata, handles)
% hObject    handle to Foward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of Foward
if(get(handles.Foward, 'Value')) 
    set(handles.Inverse, 'Value', 0)
end


% --- Executes on button press in Inverse.
function Inverse_Callback(hObject, eventdata, handles)
% hObject    handle to Inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of Inverse
if(get(handles.Inverse, 'Value')) 
    set(handles.Foward, 'Value', 0)
end

% --- Executes on button press in F_Rotation.
function F_Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to F_Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.Foward, 'Value')
    Rotation_function(9);
else if get(handles.Inverse, 'Value')
    Rotation_function(10);
else
    mydialog(0);
    end
end

% --- Executes on button press in B_Rotation.
function B_Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to B_Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.Foward, 'Value')
    Rotation_function(11);
else if get(handles.Inverse, 'Value')
    Rotation_function(12);
else
    mydialog(0);
    end
end

% --- Executes on button press in L_Rotation.
function L_Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to L_Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.Foward, 'Value')
    Rotation_function(5);
else if get(handles.Inverse, 'Value')
    Rotation_function(6);
else
    mydialog(0);
    end
end

% --- Executes on button press in R_Rotation.
function R_Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to R_Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.Foward, 'Value')
    Rotation_function(7);
else if get(handles.Inverse, 'Value')
    Rotation_function(8);
else
    mydialog(0);
    end
end

% --- Executes on button press in U_Rotation.
function U_Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to U_Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.Foward, 'Value')
    Rotation_function(1);
else if get(handles.Inverse, 'Value')
    Rotation_function(2);
else
    mydialog(0);
    end
end
    
% --- Executes on button press in D_Rotation.
function D_Rotation_Callback(hObject, eventdata, handles)
% hObject    handle to D_Rotation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if get(handles.Foward, 'Value')
    Rotation_function(3);
else if get(handles.Inverse, 'Value')
    Rotation_function(4);
else
    mydialog(0);
    end
end


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
CubeShape
set(handles.Foward, 'Value', 0)
set(handles.Inverse, 'Value', 0)
set(handles.RotateNumber, 'String', '')
set(handles.Sol, 'String', '')
