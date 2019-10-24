# Generated from json/callresult_class.tt

package Paws::Glue::GetDatabasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Database/;
  has DatabaseList => (is => 'ro', isa => ArrayRef[Glue_Database], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatabaseList' => {
                                   'class' => 'Paws::Glue::Database',
                                   'type' => 'ArrayRef[Glue_Database]'
                                 }
             },
  'IsRequired' => {
                    'DatabaseList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDatabasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseList => ArrayRef[Glue_Database]

A list of C<Database> objects from the specified catalog.


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 _request_id => Str


=cut

1;