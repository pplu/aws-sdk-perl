# Generated from json/callargs_class.tt

package Paws::SSM::CreateAssociationBatch;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_CreateAssociationBatchRequestEntry/;
  has Entries => (is => 'ro', isa => ArrayRef[SSM_CreateAssociationBatchRequestEntry], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateAssociationBatch');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::CreateAssociationBatchResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Entries' => {
                              'class' => 'Paws::SSM::CreateAssociationBatchRequestEntry',
                              'type' => 'ArrayRef[SSM_CreateAssociationBatchRequestEntry]'
                            }
             },
  'IsRequired' => {
                    'Entries' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociationBatch - Arguments for method CreateAssociationBatch on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssociationBatch on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateAssociationBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssociationBatch.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateAssociationBatchResult = $ssm->CreateAssociationBatch(
      Entries => [
        {
          Name            => 'MyDocumentARN',
          AssociationName => 'MyAssociationName',    # OPTIONAL
          AutomationTargetParameterName =>
            'MyAutomationTargetParameterName',       # min: 1, max: 50; OPTIONAL
          ComplianceSeverity => 'CRITICAL'
          ,    # values: CRITICAL, HIGH, MEDIUM, LOW, UNSPECIFIED; OPTIONAL
          DocumentVersion => 'MyDocumentVersion',    # OPTIONAL
          InstanceId      => 'MyInstanceId',         # OPTIONAL
          MaxConcurrency  => 'MyMaxConcurrency',     # min: 1, max: 7; OPTIONAL
          MaxErrors       => 'MyMaxErrors',          # min: 1, max: 7; OPTIONAL
          OutputLocation  => {
            S3Location => {
              OutputS3BucketName =>
                'MyS3BucketName',                    # min: 3, max: 63; OPTIONAL
              OutputS3KeyPrefix => 'MyS3KeyPrefix',  # max: 500; OPTIONAL
              OutputS3Region    => 'MyS3Region',     # min: 3, max: 20; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
          ,     # OPTIONAL
          ScheduleExpression =>
            'MyScheduleExpression',    # min: 1, max: 256; OPTIONAL
          Targets => [
            {
              Key => 'MyTargetKey',                 # min: 1, max: 163; OPTIONAL
              Values => [ 'MyTargetValue', ... ],   # max: 50; OPTIONAL
            },
            ...
          ],                                        # max: 5; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Failed     = $CreateAssociationBatchResult->Failed;
    my $Successful = $CreateAssociationBatchResult->Successful;

    # Returns a L<Paws::SSM::CreateAssociationBatchResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateAssociationBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[SSM_CreateAssociationBatchRequestEntry]

One or more associations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssociationBatch in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

