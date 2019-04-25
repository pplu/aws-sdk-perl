package Paws::CloudFormation::StackResourceDriftInformationSummary;
  use Moose;
  has LastCheckTimestamp => (is => 'ro', isa => 'Str');
  has StackResourceDriftStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackResourceDriftInformationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackResourceDriftInformationSummary object:

  $service_obj->Method(Att1 => { LastCheckTimestamp => $value, ..., StackResourceDriftStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackResourceDriftInformationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->LastCheckTimestamp

=head1 DESCRIPTION

Summarizes information about whether the resource's actual
configuration differs, or has I<drifted>, from its expected
configuration.

=head1 ATTRIBUTES


=head2 LastCheckTimestamp => Str

  When AWS CloudFormation last checked if the resource had drifted from
its expected configuration.


=head2 B<REQUIRED> StackResourceDriftStatus => Str

  Status of the resource's actual configuration compared to its expected
configuration

=over

=item *

C<DELETED>: The resource differs from its expected configuration in
that it has been deleted.

=item *

C<MODIFIED>: The resource differs from its expected configuration.

=item *

C<NOT_CHECKED>: AWS CloudFormation has not checked if the resource
differs from its expected configuration.

Any resources that do not currently support drift detection have a
status of C<NOT_CHECKED>. For more information, see Resources that
Support Drift Detection
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
If you performed an ContinueUpdateRollback operation on a stack, any
resources included in C<ResourcesToSkip> will also have a status of
C<NOT_CHECKED>. For more information on skipping resources during
rollback operations, see Continue Rolling Back an Update
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html)
in the AWS CloudFormation User Guide.

=item *

C<IN_SYNC>: The resources's actual configuration matches its expected
configuration.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

