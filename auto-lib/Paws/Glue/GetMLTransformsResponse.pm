# Generated from json/callresult_class.tt

package Paws::Glue::GetMLTransformsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_MLTransform/;
  has NextToken => (is => 'ro', isa => Str);
  has Transforms => (is => 'ro', isa => ArrayRef[Glue_MLTransform], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Transforms' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Transforms' => {
                                 'type' => 'ArrayRef[Glue_MLTransform]',
                                 'class' => 'Paws::Glue::MLTransform'
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

Paws::Glue::GetMLTransformsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 B<REQUIRED> Transforms => ArrayRef[Glue_MLTransform]

A list of machine learning transforms.


=head2 _request_id => Str


=cut

1;