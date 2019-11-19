
package Paws::EC2::DescribeConversionTasksResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ConversionTask/;
  has ConversionTasks => (is => 'ro', isa => ArrayRef[EC2_ConversionTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConversionTasks' => {
                                      'class' => 'Paws::EC2::ConversionTask',
                                      'type' => 'ArrayRef[EC2_ConversionTask]'
                                    }
             },
  'NameInRequest' => {
                       'ConversionTasks' => 'conversionTasks'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeConversionTasksResult

=head1 ATTRIBUTES


=head2 ConversionTasks => ArrayRef[EC2_ConversionTask]

Information about the conversion tasks.


=head2 _request_id => Str


=cut

