
package Paws::Lambda::RemoveLayerVersionPermission;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Lambda::Types qw//;
  has LayerName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RevisionId => (is => 'ro', isa => Str, predicate => 1);
  has StatementId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VersionNumber => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RemoveLayerVersionPermission');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'VersionNumber' => {
                                    'type' => 'Int'
                                  },
               'LayerName' => {
                                'type' => 'Str'
                              },
               'StatementId' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'VersionNumber' => 'VersionNumber',
                    'LayerName' => 'LayerName',
                    'StatementId' => 'StatementId'
                  },
  'ParamInQuery' => {
                      'RevisionId' => 'RevisionId'
                    },
  'IsRequired' => {
                    'VersionNumber' => 1,
                    'LayerName' => 1,
                    'StatementId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::RemoveLayerVersionPermission - Arguments for method RemoveLayerVersionPermission on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveLayerVersionPermission on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method RemoveLayerVersionPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveLayerVersionPermission.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    $lambda->RemoveLayerVersionPermission(
      LayerName     => 'MyLayerName',
      StatementId   => 'MyStatementId',
      VersionNumber => 1,
      RevisionId    => 'MyString',        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/RemoveLayerVersionPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LayerName => Str

The name or Amazon Resource Name (ARN) of the layer.



=head2 RevisionId => Str

Only update the policy if the revision ID matches the ID specified. Use
this option to avoid modifying a policy that has changed since you last
read it.



=head2 B<REQUIRED> StatementId => Str

The identifier that was specified when the statement was added.



=head2 B<REQUIRED> VersionNumber => Int

The version number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveLayerVersionPermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

