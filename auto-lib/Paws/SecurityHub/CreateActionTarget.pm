
package Paws::SecurityHub::CreateActionTarget;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has Description => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateActionTarget');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/actionTargets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SecurityHub::CreateActionTargetResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1,
                    'Id' => 1,
                    'Description' => 1
                  },
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
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

Paws::SecurityHub::CreateActionTarget - Arguments for method CreateActionTarget on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateActionTarget on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method CreateActionTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateActionTarget.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $CreateActionTargetResponse = $securityhub->CreateActionTarget(
      Description => 'MyNonEmptyString',
      Id          => 'MyNonEmptyString',
      Name        => 'MyNonEmptyString',

    );

    # Results:
    my $ActionTargetArn = $CreateActionTargetResponse->ActionTargetArn;

    # Returns a L<Paws::SecurityHub::CreateActionTargetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/CreateActionTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

The description for the custom action target.



=head2 B<REQUIRED> Id => Str

The ID for the custom action target.



=head2 B<REQUIRED> Name => Str

The name of the custom action target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateActionTarget in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

