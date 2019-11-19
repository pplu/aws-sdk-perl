# Generated from callresult_class.tt

package Paws::RDS::InstallationMediaMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_InstallationMedia/;
  has InstallationMedia => (is => 'ro', isa => ArrayRef[RDS_InstallationMedia]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InstallationMedia' => 'InstallationMedia'
                     },
  'types' => {
               'InstallationMedia' => {
                                        'type' => 'ArrayRef[RDS_InstallationMedia]',
                                        'class' => 'Paws::RDS::InstallationMedia'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::InstallationMediaMessage

=head1 ATTRIBUTES


=head2 InstallationMedia => ArrayRef[RDS_InstallationMedia]

The list of InstallationMedia objects for the AWS account.


=head2 Marker => Str

An optional pagination token provided by a previous
DescribeInstallationMedia request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

