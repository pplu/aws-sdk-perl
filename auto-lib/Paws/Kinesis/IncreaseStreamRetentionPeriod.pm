
package Paws::Kinesis::IncreaseStreamRetentionPeriod;
  use Moose;
  has RetentionPeriodHours => (is => 'ro', isa => 'Int', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IncreaseStreamRetentionPeriod');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::IncreaseStreamRetentionPeriod - Arguments for method IncreaseStreamRetentionPeriod on Paws::Kinesis

=head1 DESCRIPTION

This class represents the parameters used for calling the method IncreaseStreamRetentionPeriod on the 
Amazon Kinesis service. Use the attributes of this class
as arguments to method IncreaseStreamRetentionPeriod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IncreaseStreamRetentionPeriod.

As an example:

  $service_obj->IncreaseStreamRetentionPeriod(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RetentionPeriodHours => Int

  The new retention period of the stream, in hours. Must be more than the
current retention period.


=head2 B<REQUIRED> StreamName => Str

  The name of the stream to modify.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IncreaseStreamRetentionPeriod in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

