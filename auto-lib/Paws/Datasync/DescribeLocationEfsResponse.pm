# Generated from json/callresult_class.tt

package Paws::Datasync::DescribeLocationEfsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Datasync::Types qw/Datasync_Ec2Config/;
  has CreationTime => (is => 'ro', isa => Str);
  has Ec2Config => (is => 'ro', isa => Datasync_Ec2Config);
  has LocationArn => (is => 'ro', isa => Str);
  has LocationUri => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LocationArn' => {
                                  'type' => 'Str'
                                },
               'Ec2Config' => {
                                'class' => 'Paws::Datasync::Ec2Config',
                                'type' => 'Datasync_Ec2Config'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LocationUri' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationEfsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time that the EFS location was created.


=head2 Ec2Config => Datasync_Ec2Config




=head2 LocationArn => Str

The Amazon resource Name (ARN) of the EFS location that was described.


=head2 LocationUri => Str

The URL of the EFS location that was described.


=head2 _request_id => Str


=cut

1;