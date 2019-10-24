# Generated from json/callargs_class.tt

package Paws::FMS::PutPolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::FMS::Types qw/FMS_Policy/;
  has Policy => (is => 'ro', isa => FMS_Policy, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutPolicy');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::FMS::PutPolicyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policy' => {
                             'class' => 'Paws::FMS::Policy',
                             'type' => 'FMS_Policy'
                           }
             },
  'IsRequired' => {
                    'Policy' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutPolicy - Arguments for method PutPolicy on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPolicy on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method PutPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPolicy.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $PutPolicyResponse = $fms->PutPolicy(
      Policy => {
        ExcludeResourceTags       => 1,
        PolicyName                => 'MyResourceName',    # min: 1, max: 128
        RemediationEnabled        => 1,
        ResourceType              => 'MyResourceType',    # min: 1, max: 128
        SecurityServicePolicyData => {
          Type => 'WAF',    # values: WAF, SHIELD_ADVANCED
          ManagedServiceData =>
            'MyManagedServiceData',    # min: 1, max: 1024; OPTIONAL
        },
        ExcludeMap => {
          'ACCOUNT' => [
            'MyCustomerPolicyScopeId', ...    # min: 1, max: 1024
          ],                                  # key: values: ACCOUNT
        },    # OPTIONAL
        IncludeMap => {
          'ACCOUNT' => [
            'MyCustomerPolicyScopeId', ...    # min: 1, max: 1024
          ],                                  # key: values: ACCOUNT
        },    # OPTIONAL
        PolicyId => 'MyPolicyId',    # min: 36, max: 36; OPTIONAL
        PolicyUpdateToken =>
          'MyPolicyUpdateToken',     # min: 1, max: 1024; OPTIONAL
        ResourceTags => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],                            # max: 8; OPTIONAL
        ResourceTypeList => [
          'MyResourceType', ...       # min: 1, max: 128
        ],                            # OPTIONAL
      },

    );

    # Results:
    my $Policy    = $PutPolicyResponse->Policy;
    my $PolicyArn = $PutPolicyResponse->PolicyArn;

    # Returns a L<Paws::FMS::PutPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/PutPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => FMS_Policy

The details of the AWS Firewall Manager policy to be created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPolicy in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

