# Generated from json/callargs_class.tt

package Paws::Cloud9::DeleteEnvironmentMembership;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Cloud9::Types qw//;
  has EnvironmentId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteEnvironmentMembership');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Cloud9::DeleteEnvironmentMembershipResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'UserArn' => 'userArn',
                       'EnvironmentId' => 'environmentId'
                     },
  'IsRequired' => {
                    'UserArn' => 1,
                    'EnvironmentId' => 1
                  },
  'types' => {
               'EnvironmentId' => {
                                    'type' => 'Str'
                                  },
               'UserArn' => {
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

Paws::Cloud9::DeleteEnvironmentMembership - Arguments for method DeleteEnvironmentMembership on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEnvironmentMembership on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method DeleteEnvironmentMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEnvironmentMembership.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    my $DeleteEnvironmentMembershipResult =
      $cloud9->DeleteEnvironmentMembership(
      EnvironmentId => 'MyEnvironmentId',
      UserArn       => 'MyUserArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/DeleteEnvironmentMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

The ID of the environment to delete the environment member from.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the environment member to delete from
the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEnvironmentMembership in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

