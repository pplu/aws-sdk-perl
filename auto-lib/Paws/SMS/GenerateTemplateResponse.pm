# Generated from json/callresult_class.tt

package Paws::SMS::GenerateTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SMS::Types qw/SMS_S3Location/;
  has S3Location => (is => 'ro', isa => SMS_S3Location);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'S3Location' => {
                                 'class' => 'Paws::SMS::S3Location',
                                 'type' => 'SMS_S3Location'
                               }
             },
  'NameInRequest' => {
                       'S3Location' => 's3Location'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GenerateTemplateResponse

=head1 ATTRIBUTES


=head2 S3Location => SMS_S3Location

Location of the Amazon S3 object.


=head2 _request_id => Str


=cut

1;