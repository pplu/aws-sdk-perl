
package Paws::CloudWatchEvents::RemoveTargets;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Rule => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTargets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::RemoveTargetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::RemoveTargets - Arguments for method RemoveTargets on Paws::CloudWatchEvents

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTargets on the 
Amazon CloudWatch Events service. Use the attributes of this class
as arguments to method RemoveTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTargets.

As an example:

  $service_obj->RemoveTargets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

The list of target IDs to remove from the rule.



=head2 B<REQUIRED> Rule => Str

The name of the rule you want to remove targets from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTargets in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

