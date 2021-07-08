
package Paws::GlueDataBrew::SendProjectSessionAction;
  use Moose;
  has ClientSessionId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Preview => (is => 'ro', isa => 'Bool');
  has RecipeStep => (is => 'ro', isa => 'Paws::GlueDataBrew::RecipeStep');
  has StepIndex => (is => 'ro', isa => 'Int');
  has ViewFrame => (is => 'ro', isa => 'Paws::GlueDataBrew::ViewFrame');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendProjectSessionAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{name}/sendProjectSessionAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::SendProjectSessionActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::SendProjectSessionAction - Arguments for method SendProjectSessionAction on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendProjectSessionAction on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method SendProjectSessionAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendProjectSessionAction.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $SendProjectSessionActionResponse = $databrew->SendProjectSessionAction(
      Name            => 'MyProjectName',
      ClientSessionId => 'MyClientSessionId',    # OPTIONAL
      Preview         => 1,                      # OPTIONAL
      RecipeStep      => {
        Action => {
          Operation  => 'MyOperation',           # min: 1, max: 128
          Parameters => {
            'MyParameterName' => 'MyParameterValue'
            ,    # key: min: 1, max: 128, value: min: 1, max: 12288
          },    # OPTIONAL
        },
        ConditionExpressions => [
          {
            Condition    => 'MyCondition',         # min: 1, max: 128
            TargetColumn => 'MyTargetColumn',      # min: 1, max: 1024
            Value        => 'MyConditionValue',    # max: 1024; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      StepIndex => 1,    # OPTIONAL
      ViewFrame => {
        StartColumnIndex => 1,
        ColumnRange      => 1,    # max: 20; OPTIONAL
        HiddenColumns    => [
          'MyColumnName', ...     # min: 1, max: 255
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ActionId = $SendProjectSessionActionResponse->ActionId;
    my $Name     = $SendProjectSessionActionResponse->Name;
    my $Result   = $SendProjectSessionActionResponse->Result;

    # Returns a L<Paws::GlueDataBrew::SendProjectSessionActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/SendProjectSessionAction>

=head1 ATTRIBUTES


=head2 ClientSessionId => Str

A unique identifier for an interactive session that's currently open
and ready for work. The action will be performed on this session.



=head2 B<REQUIRED> Name => Str

The name of the project to apply the action to.



=head2 Preview => Bool

If true, the result of the recipe step will be returned, but not
applied.



=head2 RecipeStep => L<Paws::GlueDataBrew::RecipeStep>





=head2 StepIndex => Int

The index from which to preview a step. This index is used to preview
the result of steps that have already been applied, so that the
resulting view frame is from earlier in the view frame stack.



=head2 ViewFrame => L<Paws::GlueDataBrew::ViewFrame>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendProjectSessionAction in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

