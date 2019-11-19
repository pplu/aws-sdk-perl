# Generated from default/object.tt
package Paws::QLDBSession::Page;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::QLDBSession::Types qw/QLDBSession_ValueHolder/;
  has NextPageToken => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[QLDBSession_ValueHolder]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'Values' => {
                             'type' => 'ArrayRef[QLDBSession_ValueHolder]',
                             'class' => 'Paws::QLDBSession::ValueHolder'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::Page

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::Page object:

  $service_obj->Method(Att1 => { NextPageToken => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::Page object:

  $result = $service_obj->Method(...);
  $result->Att1->NextPageToken

=head1 DESCRIPTION

Contains details of the fetched page.

=head1 ATTRIBUTES


=head2 NextPageToken => Str

  The token of the next page.


=head2 Values => ArrayRef[QLDBSession_ValueHolder]

  A structure that contains values in multiple encoding formats.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

