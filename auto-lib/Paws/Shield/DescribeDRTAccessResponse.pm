# Generated from json/callresult_class.tt

package Paws::Shield::DescribeDRTAccessResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Shield::Types qw//;
  has LogBucketList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has RoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogBucketList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeDRTAccessResponse

=head1 ATTRIBUTES


=head2 LogBucketList => ArrayRef[Str|Undef]

The list of Amazon S3 buckets accessed by the DRT.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role the DRT used to access your
AWS account.


=head2 _request_id => Str


=cut

1;