package Paws::AutoScalingPlans::ApplicationSource;
  use Moose;
  has CloudFormationStackARN => (is => 'ro', isa => 'Str');
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::TagFilter]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::ApplicationSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::ApplicationSource object:

  $service_obj->Method(Att1 => { CloudFormationStackARN => $value, ..., TagFilters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::ApplicationSource object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudFormationStackARN

=head1 DESCRIPTION

Represents an application source.

=head1 ATTRIBUTES


=head2 CloudFormationStackARN => Str

  The Amazon Resource Name (ARN) of a AWS CloudFormation stack.


=head2 TagFilters => ArrayRef[L<Paws::AutoScalingPlans::TagFilter>]

  A set of tags (up to 50).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

