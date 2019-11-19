# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeUserStackAssociationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_UserStackAssociation/;
  has NextToken => (is => 'ro', isa => Str);
  has UserStackAssociations => (is => 'ro', isa => ArrayRef[AppStream_UserStackAssociation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'UserStackAssociations' => {
                                            'class' => 'Paws::AppStream::UserStackAssociation',
                                            'type' => 'ArrayRef[AppStream_UserStackAssociation]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeUserStackAssociationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 UserStackAssociations => ArrayRef[AppStream_UserStackAssociation]

The UserStackAssociation objects.


=head2 _request_id => Str


=cut

1;