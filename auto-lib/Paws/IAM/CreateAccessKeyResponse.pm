
package Paws::IAM::CreateAccessKeyResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_AccessKey/;
  has AccessKey => (is => 'ro', isa => IAM_AccessKey, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccessKey' => {
                                'class' => 'Paws::IAM::AccessKey',
                                'type' => 'IAM_AccessKey'
                              }
             },
  'IsRequired' => {
                    'AccessKey' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateAccessKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKey => IAM_AccessKey

A structure with details about the access key.


=head2 _request_id => Str


=cut

