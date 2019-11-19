# Generated from default/object.tt
package Paws::CodeCommit::IsBinaryFile;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::CodeCommit::Types qw//;
  has Base => (is => 'ro', isa => Bool);
  has Destination => (is => 'ro', isa => Bool);
  has Source => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Source' => {
                             'type' => 'Bool'
                           },
               'Base' => {
                           'type' => 'Bool'
                         },
               'Destination' => {
                                  'type' => 'Bool'
                                }
             },
  'NameInRequest' => {
                       'Source' => 'source',
                       'Base' => 'base',
                       'Destination' => 'destination'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::IsBinaryFile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::IsBinaryFile object:

  $service_obj->Method(Att1 => { Base => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::IsBinaryFile object:

  $result = $service_obj->Method(...);
  $result->Att1->Base

=head1 DESCRIPTION

Information about whether a file is binary or textual in a merge or
pull request operation.

=head1 ATTRIBUTES


=head2 Base => Bool

  The binary or non-binary status of a file in the base of a merge or
pull request.


=head2 Destination => Bool

  The binary or non-binary status of a file in the destination of a merge
or pull request.


=head2 Source => Bool

  The binary or non-binary status of file in the source of a merge or
pull request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

