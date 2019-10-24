
package Paws::CloudDirectory::LookupPolicy;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'LookupPolicy');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/policy/lookup');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::LookupPolicyResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'DirectoryArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::LookupPolicy - Arguments for method LookupPolicy on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method LookupPolicy on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method LookupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to LookupPolicy.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $LookupPolicyResponse = $clouddirectory->LookupPolicy(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $NextToken        = $LookupPolicyResponse->NextToken;
    my $PolicyToPathList = $LookupPolicyResponse->PolicyToPathList;

    # Returns a L<Paws::CloudDirectory::LookupPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/LookupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory.
For more information, see arns.



=head2 MaxResults => Int

The maximum number of items to be retrieved in a single call. This is
an approximate number.



=head2 NextToken => Str

The token to request the next page of results.



=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

Reference that identifies the object whose policies will be looked up.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method LookupPolicy in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

