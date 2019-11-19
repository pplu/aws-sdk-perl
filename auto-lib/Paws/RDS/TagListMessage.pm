# Generated from callresult_class.tt

package Paws::RDS::TagListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[RDS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'type' => 'ArrayRef[RDS_Tag]',
                              'class' => 'Paws::RDS::Tag'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TagList' => 'Tag'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[RDS_Tag]

List of tags returned by the ListTagsForResource operation.


=head2 _request_id => Str


=cut

