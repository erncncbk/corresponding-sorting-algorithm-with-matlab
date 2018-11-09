function varargout = Combarison_Sorting_Algorithm(varargin)
% COMBARISON_SORTING_ALGORITHM MATLAB code for Combarison_Sorting_Algorithm.fig
%      COMBARISON_SORTING_ALGORITHM, by itself, creates a new COMBARISON_SORTING_ALGORITHM or raises the existing
%      singleton*.
%
%      H = COMBARISON_SORTING_ALGORITHM returns the handle to a new COMBARISON_SORTING_ALGORITHM or the handle to
%      the existing singleton*.
%
%      COMBARISON_SORTING_ALGORITHM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in COMBARISON_SORTING_ALGORITHM.M with the given input arguments.
%
%      COMBARISON_SORTING_ALGORITHM('Property','Value',...) creates a new COMBARISON_SORTING_ALGORITHM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Combarison_Sorting_Algorithm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Combarison_Sorting_Algorithm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Combarison_Sorting_Algorithm

% Last Modified by GUIDE v2.5 12-Dec-2017 14:41:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Combarison_Sorting_Algorithm_OpeningFcn, ...
                   'gui_OutputFcn',  @Combarison_Sorting_Algorithm_OutputFcn, ...
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


% --- Executes just before Combarison_Sorting_Algorithm is made visible.
function Combarison_Sorting_Algorithm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Combarison_Sorting_Algorithm (see VARARGIN)

% Choose default command line output for Combarison_Sorting_Algorithm
handles.output = hObject;
guidata(hObject, handles);
handles.output=hObject;
axes(handles.axes2);
imshow('ikclogo.png')

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Combarison_Sorting_Algorithm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Combarison_Sorting_Algorithm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in insertionbutton.
function insertionbutton_Callback(hObject, eventdata, handles)
% hObject    handle to insertionbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global unsortedArray         ;          
global sliderVal
sortedArray=InsertionSort(unsortedArray,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in mergebutton.
function mergebutton_Callback(hObject, eventdata, handles)
% hObject    handle to mergebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global unsortedArray                    % Array is generated
global edtnmbr
 global sliderVal
sortedArray=MergeSort(unsortedArray,1,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in bubblebutton.
function bubblebutton_Callback(hObject, eventdata, handles)
% hObject    handle to bubblebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global unsortedArray                    % Array is generated
global edtnmbr
 global sliderVal
 sortedArray=BubbleSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in selectionbutton.
function selectionbutton_Callback(hObject, eventdata, handles)
% hObject    handle to selectionbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

 global unsortedArray                    % Array is generated
 global edtnmbr
  global sliderVal
 sortedArray=SelectionSort(unsortedArray,edtnmbr,sliderVal);
 bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
 text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');  box off;


% --- Executes on button press in heapbutton.
function heapbutton_Callback(hObject, eventdata, handles)
% hObject    handle to heapbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global unsortedArray                    % Array is generated
global edtnmbr
 global sliderVal
sortedArray=HeapSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in quickbutton.
function quickbutton_Callback(hObject, eventdata, handles)
% hObject    handle to quickbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global unsortedArray                    % Array is generated
global edtnmbr
 global sliderVal
sortedArray=QuickSort(unsortedArray,1,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in countingbutton.
function countingbutton_Callback(hObject, eventdata, handles)
% hObject    handle to countingbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global unsortedArray                    % Array is generated
%  bar(unsortedArray,'k'); axis off
global edtnmbr
 global sliderVal
sortedArray=CountingSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in radixbutton.
function radixbutton_Callback(hObject, eventdata, handles)
% hObject    handle to radixbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global edtnmbr
 global sliderVal
 global unsortedArray  
sortedArray=RadixSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in bucketbutton.
function bucketbutton_Callback(hObject, eventdata, handles)
% hObject    handle to bucketbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global edtnmbr
 global sliderVal
 global unsortedArray  
sortedArray=BucketSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;


% --- Executes on button press in shellbutton.
function shellbutton_Callback(hObject, eventdata, handles)
% hObject    handle to shellbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global edtnmbr
 global sliderVal
 global unsortedArray  
sortedArray=ShellSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in combbutton.
function combbutton_Callback(hObject, eventdata, handles)
% hObject    handle to combbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global edtnmbr
 global sliderVal
 global unsortedArray  
sortedArray=CombSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;


% --- Executes on button press in cocktailbutton.
function cocktailbutton_Callback(hObject, eventdata, handles)
% hObject    handle to cocktailbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)

global edtnmbr
 global sliderVal
 global unsortedArray  
sortedArray=CocktailSort(unsortedArray,edtnmbr,sliderVal);
bar(sortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(sortedArray),sortedArray,num2str(sortedArray'),'vert','bottom','horiz','center');
 box off;


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function maxrange_Callback(hObject, eventdata, handles)
% hObject    handle to maxrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxrange as text
%        str2double(get(hObject,'String')) returns contents of maxrange as a double


% --- Executes during object creation, after setting all properties.
function maxrange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function minrange_Callback(hObject, eventdata, handles)
% hObject    handle to minrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of minrange as text
%        str2double(get(hObject,'String')) returns contents of minrange as a double


% --- Executes during object creation, after setting all properties.
function minrange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to minrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtnmbr_Callback(hObject, eventdata, handles)
% hObject    handle to edtnmbr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtnmbr as text
%        str2double(get(hObject,'String')) returns contents of edtnmbr as a double


% --- Executes during object creation, after setting all properties.
function edtnmbr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtnmbr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)
axes(handles.axes1);
minrange=get(handles.minrange,'String');
minrange=str2double(minrange);

maxrange=get(handles.maxrange,'String');
maxrange=str2double(maxrange);
global edtnmbr
edtnmbr=get(handles.edtnmbr,'String');
edtnmbr=str2double(edtnmbr);

global unsortedArray ;
unsortedArray=randi([minrange,maxrange],1,edtnmbr);
bar(unsortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(unsortedArray),unsortedArray,num2str(unsortedArray'),'vert','bottom','horiz','center');
 box off;

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=1; 
set(handles.minrange,'String',a);

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=randi([10,150]);
set(handles.maxrange,'String',a);

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=randi([1,50]);
set(handles.edtnmbr,'String',n);

% --- Executes on slider movement.
function sliderNum_Callback(hObject, eventdata, handles)
% hObject    handle to sliderNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global sliderVal 
sliderVal=get(hObject,'Value');
% sliderVal=str2double(sliderVal);
 assignin('base','sliderVal',sliderVal);
 set(handles.textNum,'String',num2str(sliderVal));

% --- Executes during object creation, after setting all properties.
function sliderNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function textNum_Callback(hObject, eventdata, handles)
% hObject    handle to textNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of textNum as text
%        str2double(get(hObject,'String')) returns contents of textNum as a double


% --- Executes during object creation, after setting all properties.
function textNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to textNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global unsortedArray ;
 axes(handles.axes1);   

bar(unsortedArray,'FaceColor',[0 .5 .5],'EdgeColor',[1 .8 .7],'LineWidth',1.5); axis off ;
text(1:length(unsortedArray),unsortedArray,num2str(unsortedArray'),'vert','bottom','horiz','center');
 box off;
 guidata(hObject, handles);

% --- Executes on button press in stopp.
function stopp_Callback(hObject, eventdata, handles)
% hObject    handle to stopp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.stopp = 0;  %# Create stop_now in the handles structure
guidata(hObject,handles);  %# Update the GUI data
while ~(handles.stopp)
  drawnow;  %# Give the button callback a chance to interrupt the opening function
  handles = guidata(hObject);  %# Get the newest GUI data
end
handles.stopp=1;
guidata(hObject, handles);
