package Paws::CloudFront::PublicKeySummary;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has EncodedKey => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::PublicKeySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::PublicKeySummary object:

  $service_obj->Method(Att1 => { Comment => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::PublicKeySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

A complex data type for public key information.

=head1 ATTRIBUTES


=head2 Comment => Str

  Comment for public key information summary.


=head2 B<REQUIRED> CreatedTime => Str

  Creation time for public key information summary.


=head2 B<REQUIRED> EncodedKey => Str

  Encoded key for public key information summary.


=head2 B<REQUIRED> Id => Str

  ID for public key information summary.


=head2 B<REQUIRED> Name => Str

  Name for public key information summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

