package Paws::Shield::Protection;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::Protection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::Protection object:

  $service_obj->Method(Att1 => { Id => $value, ..., ResourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::Protection object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

An object that represents a resource that is under DDoS protection.

=head1 ATTRIBUTES


=head2 Id => Str

  The unique identifier (ID) of the protection.


=head2 Name => Str

  The friendly name of the protection. For example, C<My CloudFront
distributions>.


=head2 ResourceArn => Str

  The ARN (Amazon Resource Name) of the AWS resource that is protected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

