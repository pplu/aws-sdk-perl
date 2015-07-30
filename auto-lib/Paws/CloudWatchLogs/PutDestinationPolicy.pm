
package Paws::CloudWatchLogs::PutDestinationPolicy {
  use Moose;
  has accessPolicy => (is => 'ro', isa => 'Str', required => 1);
  has destinationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDestinationPolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestinationPolicy - Arguments for method PutDestinationPolicy on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDestinationPolicy on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method PutDestinationPolicy.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to PutDestinationPolicy.

As an example:

  $service_obj->PutDestinationPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> accessPolicy => Str

  

An IAM policy document that authorizes cross-account users to deliver
their log events to associated destination.










=head2 B<REQUIRED> destinationName => Str

  

A name for an existing destination.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDestinationPolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

