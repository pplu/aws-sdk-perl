
package Paws::Snowball::DescribeJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::DescribeJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeJob - Arguments for method DescribeJob on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJob on the 
L<Amazon Import/Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method DescribeJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJob.

As an example:

  $service_obj->DescribeJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The automatically generated ID for a job, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJob in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

