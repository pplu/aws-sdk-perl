# Generated by default/object.tt
package Paws::AmplifyBackend::BackendAPIRespObj;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', request_name => 'appId', traits => ['NameInRequest'], required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', request_name => 'backendEnvironmentName', traits => ['NameInRequest'], required => 1);
  has Error => (is => 'ro', isa => 'Str', request_name => 'error', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has Operation => (is => 'ro', isa => 'Str', request_name => 'operation', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::BackendAPIRespObj

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyBackend::BackendAPIRespObj object:

  $service_obj->Method(Att1 => { AppId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyBackend::BackendAPIRespObj object:

  $result = $service_obj->Method(...);
  $result->Att1->AppId

=head1 DESCRIPTION

The response object sent when a backend is created.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.


=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.


=head2 Error => Str

If the request fails, this error is returned.


=head2 JobId => Str

The ID for the job.


=head2 Operation => Str

The name of the operation.


=head2 Status => Str

The current status of the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

