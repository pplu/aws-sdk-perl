package Paws::Lightsail::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a tag key and optional value assigned to an Amazon Lightsail
resource.

For more information about tags in Lightsail, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).

=head1 ATTRIBUTES


=head2 Key => Str

  The key of the tag.

Constraints: Tag keys accept a maximum of 128 letters, numbers, spaces
in UTF-8, or the following characters: + - = . _ : / @


=head2 Value => Str

  The value of the tag.

Constraints: Tag values accept a maximum of 256 letters, numbers,
spaces in UTF-8, or the following characters: + - = . _ : / @



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

