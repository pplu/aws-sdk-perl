
package Paws::Batch::RegisterJobDefinitionResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Batch::Types qw//;
  has JobDefinitionArn => (is => 'ro', isa => Str, required => 1);
  has JobDefinitionName => (is => 'ro', isa => Str, required => 1);
  has Revision => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Revision' => {
                               'type' => 'Int'
                             },
               'JobDefinitionName' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobDefinitionArn' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Revision' => 'revision',
                       'JobDefinitionName' => 'jobDefinitionName',
                       'JobDefinitionArn' => 'jobDefinitionArn'
                     },
  'IsRequired' => {
                    'Revision' => 1,
                    'JobDefinitionName' => 1,
                    'JobDefinitionArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::RegisterJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the job definition.


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the job definition.


=head2 B<REQUIRED> Revision => Int

The revision of the job definition.


=head2 _request_id => Str


=cut

