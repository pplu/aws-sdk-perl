# Generated from json/callresult_class.tt

package Paws::AppStream::BatchDisassociateUserStackResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_UserStackAssociationError/;
  has Errors => (is => 'ro', isa => ArrayRef[AppStream_UserStackAssociationError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::AppStream::UserStackAssociationError',
                             'type' => 'ArrayRef[AppStream_UserStackAssociationError]'
                           }
             },
  'NameInRequest' => {
                       'Errors' => 'errors'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::BatchDisassociateUserStackResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[AppStream_UserStackAssociationError]

The list of UserStackAssociationError objects.


=head2 _request_id => Str


=cut

1;