import React from 'react';

interface IconFieldProps {
    children: React.ReactNode;
    className?: string;
}

export const IconField: React.FC<IconFieldProps> = ({ children, className }) => (
    <div className={`p-icon-field p-icon-field-left ${className || ''}`}>{children}</div>
);

interface InputIconProps {
    className?: string;
}

export const InputIcon: React.FC<InputIconProps> = ({ className }) => (
    <i className={`p-input-icon ${className || ''}`}></i>
);
