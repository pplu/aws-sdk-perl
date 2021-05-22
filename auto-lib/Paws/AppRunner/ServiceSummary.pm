# Generated by default/object.tt
package Paws::AppRunner::ServiceSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has ServiceArn => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');
  has ServiceUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ServiceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppRunner::ServiceSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppRunner::ServiceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Provides summary information for an AWS App Runner service.

This type contains limited information about a service. It doesn't
include configuration details. It's returned by the ListServices
(https://docs.aws.amazon.com/apprunner/latest/api/API_ListServices.html)
action. Complete service information is returned by the CreateService
(https://docs.aws.amazon.com/apprunner/latest/api/API_CreateService.html),
DescribeService
(https://docs.aws.amazon.com/apprunner/latest/api/API_DescribeService.html),
and DeleteService
(https://docs.aws.amazon.com/apprunner/latest/api/API_DeleteService.html)
actions using the Service
(https://docs.aws.amazon.com/apprunner/latest/api/API_Service.html)
type.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time when the App Runner service was created. It's in the Unix time
stamp format.


=head2 ServiceArn => Str

The Amazon Resource Name (ARN) of this service.


=head2 ServiceId => Str

An ID that App Runner generated for this service. It's unique within
the AWS Region.


=head2 ServiceName => Str

The customer-provided service name.


=head2 ServiceUrl => Str

A subdomain URL that App Runner generated for this service. You can use
this URL to access your service web application.


=head2 Status => Str

The current state of the App Runner service. These particular values
mean the following.

=over

=item *

C<CREATE_FAILED> E<ndash> The service failed to create. Read the
failure events and logs, change any parameters that need to be fixed,
and retry the call to create the service.

The failed service isn't usable, and still counts towards your service
quota. When you're done analyzing the failure, delete the service.

=item *

C<DELETE_FAILED> E<ndash> The service failed to delete and can't be
successfully recovered. Retry the service deletion call to ensure that
all related resources are removed.

=back



=head2 UpdatedAt => Str

The time when the App Runner service was last updated. It's in theUnix
time stamp format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

