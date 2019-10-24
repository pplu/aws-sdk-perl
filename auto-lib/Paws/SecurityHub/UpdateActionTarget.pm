
package Paws::SecurityHub::UpdateActionTarget;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has ActionTargetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateActionTarget');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/actionTargets/{ActionTargetArn+}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SecurityHub::UpdateActionTargetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionTargetArn' => {
                                      'type' => 'Str'
                                    },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'ActionTargetArn' => 'ActionTargetArn'
                  },
  'IsRequired' => {
                    'ActionTargetArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateActionTarget - Arguments for method UpdateActionTarget on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateActionTarget on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateActionTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateActionTarget.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateActionTargetResponse = $securityhub->UpdateActionTarget(
      ActionTargetArn => 'MyNonEmptyString',
      Description     => 'MyNonEmptyString',    # OPTIONAL
      Name            => 'MyNonEmptyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateActionTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargetArn => Str

The ARN of the custom action target to update.



=head2 Description => Str

The updated description for the custom action target.



=head2 Name => Str

The updated name of the custom action target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateActionTarget in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

