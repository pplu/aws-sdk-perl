
package Paws::IoT::CancelJob;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment');
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{jobId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CancelJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CancelJob - Arguments for method CancelJob on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJob on the 
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CancelJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJob.

As an example:

  $service_obj->CancelJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Comment => Str

An optional comment string describing why the job was canceled.



=head2 B<REQUIRED> JobId => Str

The unique identifier you assigned to this job when it was created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJob in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

