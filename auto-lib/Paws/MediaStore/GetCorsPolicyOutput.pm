# Generated from json/callresult_class.tt

package Paws::MediaStore::GetCorsPolicyOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaStore::Types qw/MediaStore_CorsRule/;
  has CorsPolicy => (is => 'ro', isa => ArrayRef[MediaStore_CorsRule], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CorsPolicy' => {
                                 'class' => 'Paws::MediaStore::CorsRule',
                                 'type' => 'ArrayRef[MediaStore_CorsRule]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'CorsPolicy' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetCorsPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CorsPolicy => ArrayRef[MediaStore_CorsRule]

The CORS policy assigned to the container.


=head2 _request_id => Str


=cut

1;