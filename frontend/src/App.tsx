import React from 'react';
import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider, useAuth } from './AuthContext';
import Login from './pages/Login';
import Register from './pages/Register';
import AppShell from './components/AppShell';

function ProtectedRoute({ children }: { children: React.ReactNode }) {
    const { user, loading } = useAuth();
    if (loading) return <div>Loading...</div>;
    if (!user) return <Navigate to="/login" replace />;
    return <>{children}</>;
}

function DashboardPlaceholder({ title }: { title: string }) {
    return <div><h1>{title}</h1><p>Placeholder for {title} tab.</p></div>;
}

export default function App() {
    return (
        <AuthProvider>
            <BrowserRouter>
                <Routes>
                    <Route path="/login" element={<Login />} />
                    <Route path="/register" element={<Register />} />
                    
                    <Route path="/" element={<ProtectedRoute><AppShell /></ProtectedRoute>}>
                        <Route index element={<Navigate to="/today" replace />} />
                        <Route path="explore" element={<DashboardPlaceholder title="Explore" />} />
                        <Route path="today" element={<DashboardPlaceholder title="Today" />} />
                        <Route path="roadmap" element={<DashboardPlaceholder title="Roadmap" />} />
                        <Route path="learn" element={<DashboardPlaceholder title="Learn" />} />
                        <Route path="review" element={<DashboardPlaceholder title="Review" />} />
                        <Route path="progress" element={<DashboardPlaceholder title="Progress" />} />
                    </Route>
                </Routes>
            </BrowserRouter>
        </AuthProvider>
    );
}
