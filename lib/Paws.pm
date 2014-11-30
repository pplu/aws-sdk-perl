package Paws::SDK::Config;

use Moose;

has caller => (is => 'ro', isa => 'Str', default => 'Paws::Net::Caller'); 
has override_endpoint_role  => (is => 'ro', isa => 'Str');
has override_signature_role => (is => 'ro', isa => 'Str');
has override_parameter_role => (is => 'ro', isa => 'Str');
has override_response_role  => (is => 'ro', isa => 'Str');

1;

package Paws;

use Moose;
use MooseX::ClassAttribute;
use Moose::Util qw//;
use Module::Runtime qw//;

use Paws::API::JSONAttribute;

use Paws::Net::Caller;
use Paws::API;

has _class_prefix => (isa => 'Str', is => 'ro', default => 'Paws::');
has _class_cache => (isa => 'HashRef', is => 'ro', default => sub { {} });

has config => (isa => 'Paws::SDK::Config', is => 'rw', default => sub { Paws->default_config });

class_has _default_object => (is => 'rw', isa => 'Paws');
class_has default_config => (is => 'rw', isa => 'Paws::SDK::Config', default => sub { Paws::SDK::Config->new });

sub load_class {
  my (undef, @classes) = @_;
  Module::Runtime::require_module($_) for (@classes);
}

sub service {
  my ($self, $service_name) = @_;

  # If ->service is invoked via Paws->service, without an instance
  if (not ref($self)) {
    if (not defined Paws->_default_object) {
      Paws->_default_object(Paws->new(config => Paws->default_config));
    }
    $self = Paws->_default_object;
  }

  my $class = $self->_class_prefix . $service_name;

  return $self->_class_cache->{ $class } if (defined $self->_class_cache->{ $class });
  
  $self->load_class($class);

  my $caller_role    = $self->config->caller;
  my $endpoint_role  = (defined $self->config->override_endpoint_role) ? $self->config->override_endpoint_role : $class->endpoint_role;
  my $signature_role = (defined $self->config->override_signature_role) ? $self->config->override_signature_role : $class->signature_role;
  my $parameter_role = (defined $self->config->override_parameter_role) ? $self->config->override_parameter_role : $class->parameter_role;
  my $response_role  = (defined $self->config->override_response_role) ? $self->config->override_response_role : $class->response_role;

  $self->load_class($caller_role, $endpoint_role, $signature_role, $parameter_role, $response_role);

  my $service = Moose::Util::with_traits($class, $caller_role, 
                                                 $endpoint_role, 
                                                 $signature_role,
                                                 $parameter_role,
                                                 $response_role);

  $self->_class_cache->{ $class } = $service;

  return $service;
}

1;
### main pod documentation begin ###

=head1 NAME

Paws - A Perl SDK for AWS (Amazon Web Services) APIs

=head1 SYNOPSIS

  use Paws;
  my $obj = Paws->service('...')->new;
  my $res = $obj->MethodCall(Arg1 => $val1, Arg2 => $val2);
  print $res->AttributeFromResult;

=head1 DESCRIPTION

Paws is an attempt to develop an always up-to-date SDK that covers all possible AWS services.

=head1 STATUS

Please consider the SDK is beta quality. The intention of publishing to CPAN is having the community
find the SDK, try it, give feedback, etc. Some services are still not working, and some heavy
refactoring will still be done to the internals. The external interface to SDK users will try to be 
kept stable, and changes to it should be notified via ChangeLog

=head1 SUPPORTED SERVICES

Please take a look at classes in the Paws::XXX namespace

=head1 SERVICE CLASSES

Each service in AWS (EC2, CloudFormation, SQS, SNS, etc) has an service class associated. The service class represents the properties that a web service has (how to call it, what methods it has, how to authenticate, etc). When a service class is instanced, it will be able to make calls. To obtaing a service class is done via the ->service method

  use Paws;
  my $service_class = Paws->service('Service');

To obtain an instance, call ->new on the class, and pass in the required parameters

  my $service = $service_class->new(region => '...');

As a shortcut, you can use:

  use Paws;
  my $service = Paws->service('Service')->new(region => '...');

=head1 AUTHENTICATION

Service classes by default try to authenticate with a chained autheticator. The default authenticator tries to find credentials in your enviroinment variables B<AWS_ACCESS_KEY> and B<AWS_SECRET_KEY>. B<AWS_ACCESS_KEY_ID> and B<AWS_SECRET_ACCESS_KEY> are also scanned for compatibility with the official SDKs. If no environment variables are found, then a call to retrieve Role credentials is done. If your instance is running on an AWS instance, and has a Role assigned, the SDK will automatically retrieve credentials to call any services that the instances Role permits.

Please never burn credentials into your code. That's why the methods for passing an explicit access key and secret key are not documented.

When instancing a service object, we can pass in custom credential providers

  use Paws::Net::STSCredentials;

  my $cred_provider = Paws::Net::STSCredentials->new(
    Name => 'MyName',
    DurationSeconds => 900,
    Policy => '{"Version":"2012-10-17","Statement":[{"Effect": "Allow","Action":["ec2:DescribeInstances"],"Resource":"*"}]}'
  );
  my $ec2 = Paws->service('EC2')->new(credentials => $cred_provider, region => 'eu-west-1');

In this example we instance a service object that uses the STS service to create temporary credentials that only let the service object call DescribeInstances.

=head1 Using Service objects (Calling APIs)

Each API call is represented as a method call with the same name as the API call. The arguments to the call are passed as lists (named parameters) to the call. So, to call DescribeInstances on the EC2 service:

  my $result = $ec2->DescribeInstances;

The DescribeInstances call has no required parameters, but if needed, we can pass them in (you can look them up in L<Paws::EC2> and see detail in L<Paws::EC2::DescribeInstances>

  my $result = $ec2->DescribeInstances(MaxResults => 5);

If the parameter is an Array:

  my $result = $ec2->DescribeInstances(InstanceIds => [ 'i-....' ]);

If the parameter to be passed in is a complex value (an object)

  my $result = $ec2->DescribeInstances(Filters => [ { Name => '', Value => '' } ])

=head1 RETURN VALUES

The AWS APIs return nested datastructures in various formats. The SDK converts these datastructures into objects that can then be used as wanted.

  my $private_dns = $result->Reservations->[0]->Instances->[0]->PrivateDnsName;

=head1 AUTHOR

    Jose Luis Martinez
    CPAN ID: JLMARTIN
    CAPSiDE
    jlmartinez@capside.com

=head1 SEE ALSO

L<http://aws.amazon.com/documentation/>

L<https://github.com/pplu/aws-sdk-perl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
