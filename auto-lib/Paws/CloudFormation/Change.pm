package Paws::CloudFormation::Change;
  use Moose;
  has ResourceChange => (is => 'ro', isa => 'Paws::CloudFormation::ResourceChange');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::Change

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::Change object:

  $service_obj->Method(Att1 => { ResourceChange => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::Change object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceChange

=head1 DESCRIPTION

The C<Change> structure describes the changes AWS CloudFormation will
perform if you execute the change set.

=head1 ATTRIBUTES


=head2 ResourceChange => L<Paws::CloudFormation::ResourceChange>

  A C<ResourceChange> structure that describes the resource and action
that AWS CloudFormation will perform.


=head2 Type => Str

  The type of entity that AWS CloudFormation changes. Currently, the only
entity type is C<Resource>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

