# Generated from json/callargs_class.tt

package Paws::StepFunctions::CreateActivity;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StepFunctions::Types qw/StepFunctions_Tag/;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[StepFunctions_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateActivity');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::StepFunctions::CreateActivityOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'class' => 'Paws::StepFunctions::Tag',
                           'type' => 'ArrayRef[StepFunctions_Tag]'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateActivity - Arguments for method CreateActivity on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateActivity on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method CreateActivity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateActivity.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $CreateActivityOutput = $states->CreateActivity(
      Name => 'MyName',
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $ActivityArn  = $CreateActivityOutput->ActivityArn;
    my $CreationDate = $CreateActivityOutput->CreationDate;

    # Returns a L<Paws::StepFunctions::CreateActivityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/states/CreateActivity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the activity to create. This name must be unique for your
AWS account and region for 90 days. For more information, see Limits
Related to State Machine Executions
(https://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions)
in the I<AWS Step Functions Developer Guide>.

A name must I<not> contain:

=over

=item *

white space

=item *

brackets C<E<lt> E<gt> { } [ ]>

=item *

wildcard characters C<? *>

=item *

special characters C<" # % \ ^ | ~ ` $ & , ; : />

=item *

control characters (C<U+0000-001F>, C<U+007F-009F>)

=back




=head2 Tags => ArrayRef[StepFunctions_Tag]

The list of tags to add to a resource.

An array of key-value pairs. For more information, see Using Cost
Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<AWS Billing and Cost Management User Guide>, and Controlling
Access Using IAM Tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html).

Tags may only contain Unicode letters, digits, white space, or these
symbols: C<_ . : / = + - @>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateActivity in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

