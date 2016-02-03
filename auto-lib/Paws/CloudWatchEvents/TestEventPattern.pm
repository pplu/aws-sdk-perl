
package Paws::CloudWatchEvents::TestEventPattern;
  use Moose;
  has Event => (is => 'ro', isa => 'Str', required => 1);
  has EventPattern => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestEventPattern');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::TestEventPatternResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::TestEventPattern - Arguments for method TestEventPattern on Paws::CloudWatchEvents

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestEventPattern on the 
Amazon CloudWatch Events service. Use the attributes of this class
as arguments to method TestEventPattern.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestEventPattern.

As an example:

  $service_obj->TestEventPattern(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

The event in the JSON format to test against the event pattern.



=head2 B<REQUIRED> EventPattern => Str

The event pattern you want to test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestEventPattern in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

