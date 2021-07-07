
package Paws::RDS::ModifyDBProxy;
  use Moose;
  has Auth => (is => 'ro', isa => 'ArrayRef[Paws::RDS::UserAuthConfig]');
  has DBProxyName => (is => 'ro', isa => 'Str', required => 1);
  has DebugLogging => (is => 'ro', isa => 'Bool');
  has IdleClientTimeout => (is => 'ro', isa => 'Int');
  has NewDBProxyName => (is => 'ro', isa => 'Str');
  has RequireTLS => (is => 'ro', isa => 'Bool');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBProxy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBProxyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBProxyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBProxy - Arguments for method ModifyDBProxy on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBProxy on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyDBProxy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBProxy.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyDBProxyResponse = $rds->ModifyDBProxy(
      DBProxyName => 'MyString',
      Auth        => [
        {
          AuthScheme  => 'SECRETS',     # values: SECRETS; OPTIONAL
          Description => 'MyString',
          IAMAuth     => 'DISABLED',    # values: DISABLED, REQUIRED; OPTIONAL
          SecretArn   => 'MyString',
          UserName    => 'MyString',
        },
        ...
      ],    # OPTIONAL
      DebugLogging      => 1,                      # OPTIONAL
      IdleClientTimeout => 1,                      # OPTIONAL
      NewDBProxyName    => 'MyString',             # OPTIONAL
      RequireTLS        => 1,                      # OPTIONAL
      RoleArn           => 'MyString',             # OPTIONAL
      SecurityGroups    => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DBProxy = $ModifyDBProxyResponse->DBProxy;

    # Returns a L<Paws::RDS::ModifyDBProxyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBProxy>

=head1 ATTRIBUTES


=head2 Auth => ArrayRef[L<Paws::RDS::UserAuthConfig>]

The new authentication settings for the C<DBProxy>.



=head2 B<REQUIRED> DBProxyName => Str

The identifier for the C<DBProxy> to modify.



=head2 DebugLogging => Bool

Whether the proxy includes detailed information about SQL statements in
its logs. This information helps you to debug issues involving SQL
behavior or the performance and scalability of the proxy connections.
The debug information includes the text of SQL statements that you
submit through the proxy. Thus, only enable this setting when needed
for debugging, and only when you have security measures in place to
safeguard any sensitive information that appears in the logs.



=head2 IdleClientTimeout => Int

The number of seconds that a connection to the proxy can be inactive
before the proxy disconnects it. You can set this value higher or lower
than the connection timeout limit for the associated database.



=head2 NewDBProxyName => Str

The new identifier for the C<DBProxy>. An identifier must begin with a
letter and must contain only ASCII letters, digits, and hyphens; it
can't end with a hyphen or contain two consecutive hyphens.



=head2 RequireTLS => Bool

Whether Transport Layer Security (TLS) encryption is required for
connections to the proxy. By enabling this setting, you can enforce
encrypted TLS connections to the proxy, even if the associated database
doesn't use TLS.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that the proxy uses to
access secrets in AWS Secrets Manager.



=head2 SecurityGroups => ArrayRef[Str|Undef]

The new list of security groups for the C<DBProxy>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBProxy in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

