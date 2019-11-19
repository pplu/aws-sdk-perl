# Generated from default/object.tt
package Paws::FSX::FileSystemFailureDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FSX::Types qw//;
  has Message => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::FileSystemFailureDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::FileSystemFailureDetails object:

  $service_obj->Method(Att1 => { Message => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::FileSystemFailureDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

A structure providing details of any failures that occur when creating
the file system has failed.

=head1 ATTRIBUTES


=head2 Message => Str

  A message describing any failures that occurred during file system
creation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

