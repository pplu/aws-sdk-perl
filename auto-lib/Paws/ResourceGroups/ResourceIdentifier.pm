package Paws::ResourceGroups::ResourceIdentifier;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ResourceIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceGroups::ResourceIdentifier object:

  $service_obj->Method(Att1 => { ResourceArn => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceGroups::ResourceIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceArn

=head1 DESCRIPTION

The ARN of a resource, and its resource type.

=head1 ATTRIBUTES


=head2 ResourceArn => Str

  The ARN of a resource.


=head2 ResourceType => Str

  The resource type of a resource, such as C<AWS::EC2::Instance>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

