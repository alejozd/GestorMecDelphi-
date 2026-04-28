import React from 'react';

interface InputGroupProps {
    children: React.ReactNode;
    className?: string;
}

export const InputGroup: React.FC<InputGroupProps> = ({ children, className }) => (
    <div className={`p-inputgroup ${className || ''}`}>{children}</div>
);

interface InputGroupAddonProps {
    children: React.ReactNode;
    className?: string;
    addonType?: 'prepend' | 'append';
}

export const InputGroupAddon: React.FC<InputGroupAddonProps> = ({ children, className }) => (
    <span className={`p-inputgroup-addon ${className || ''}`}>{children}</span>
);
