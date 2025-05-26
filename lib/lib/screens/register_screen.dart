import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_service.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final authService = Provider.of<AuthService>(context, listen: false);
    String? error = await authService.registerWithEmailAndPassword(
      _emailController.text,
      _passwordController.text,
      _nameController.text,
      _phoneController.text,
    );

    setState(() => _isLoading = false);

    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      // Registration successful, navigate back to auth gate
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration successful! Welcome to ApkaThikana Nagpur'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
        Color(0xFF2196F3),
    Color(0xFF1976D2),
    ],
    ),
    ),
    child: SafeArea(
    child: Center(
    child: SingleChildScrollView(
    padding: EdgeInsets.all(24),
    child: Card(
    elevation: 8,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    ),
    child: Padding(
    padding: EdgeInsets.all(24),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    // Back button
    Row(
    children: [
    IconButton(
    onPressed: () => Navigator.pop(context),
    icon: Icon(Icons.arrow_back),
    ),
    ],
    ),

    // Logo and title
    Icon(
    Icons.person_add,
    size: 64,
    color: Color(0xFF2196F3),
    ),
    SizedBox(height: 16),
    Text(
    'Create Account',
    style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xFF2196F3),
    ),
    ),
    Text(
    'Join ApkaThikana Nagpur family',
    style: TextStyle(
    fontSize: 14,
    color: Colors.grey[600],
    ),
    ),
    SizedBox(height: 32),

    // Registration form
    Form(
    key: _formKey,
    child: Column(
    children: [
    TextFormField(
    controller: _nameController,
    decoration: InputDecoration(
    labelText: 'Full Name',
    prefixIcon: Icon(Icons.person),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your full name';
    }
    if (value.length < 2) {
    return 'Name must be at least 2 characters';
    }
    return null;
    },
    ),
    SizedBox(height: 16),
    TextFormField(
    controller: _emailController,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    labelText: 'Email',
    prefixIcon: Icon(Icons.email),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your email';
    }
    if (!value.contains('@')) {
    return 'Please enter a valid email';
    }
    return null;
    },
    ),
    SizedBox(height: 16),
    TextFormField(
    controller: _phoneController,
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
    labelText: 'Phone Number',
    prefixIcon: Icon(Icons.phone),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    ),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter your phone number';
    }
    if (value.length < 10) {
    return 'Please enter a valid phone number';
    }
    return null;
    },
    ),
    SizedBox(height: 16),
    TextFormField(
    controller: _passwordController,
    obscureText: _obscurePassword,
    decoration: InputDecoration(
