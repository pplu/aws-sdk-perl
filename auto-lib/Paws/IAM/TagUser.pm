# Generated from callargs_class.tt

package Paws::IAM::TagUser;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IAM::Types qw/IAM_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[IAM_Tag], required => 1, predicate => 1);
  has UserName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagUser');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[IAM_Tag]',
                           'class' => 'Paws::IAM::Tag'
                         },
               'UserName' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'UserName' => 1,
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::TagUser - Arguments for method TagUser on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagUser on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method TagUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagUser.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->TagUser(
      Tags => [
        {
          Key   => 'MytagKeyType',      # min: 1, max: 128
          Value => 'MytagValueType',    # max: 256

        },
        ...
      ],
      UserName => 'MyexistingUserNameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/TagUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[IAM_Tag]

The list of tags that you want to attach to the user. Each tag consists
of a key name and an associated value.



=head2 B<REQUIRED> UserName => Str

The name of the user that you want to add tags to.

This parameter accepts (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that consist
of upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagUser in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

