package Paws::S3::CommonPrefix;
  use Moose;
  has Prefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CommonPrefix

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CommonPrefix object:

  $service_obj->Method(Att1 => { Prefix => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CommonPrefix object:

  $result = $service_obj->Method(...);
  $result->Att1->Prefix

=head1 DESCRIPTION

Container for all (if there are any) keys between Prefix and the next
occurrence of the string specified by a delimiter. CommonPrefixes lists
keys that act like subdirectories in the directory specified by Prefix.
For example, if the prefix is notes/ and the delimiter is a slash (/)
as in notes/summer/july, the common prefix is notes/summer/.

=head1 ATTRIBUTES


=head2 Prefix => Str

  Container for the specified common prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

