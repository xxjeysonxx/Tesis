import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://prppgvikeyzakcufjuov.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBycHBndmlrZXl6YWtjdWZqdW92Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODYxMTAwOTUsImV4cCI6MjAwMTY4NjA5NX0.ipt2s-5OfyRTglN-d3m9pAG2sHPurBP6sJPl444j95g';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
      );
}
