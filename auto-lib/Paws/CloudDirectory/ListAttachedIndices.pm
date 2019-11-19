
package Paws::CloudDirectory::ListAttachedIndices;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has ConsistencyLevel => (is => 'ro', isa => Str, predicate => 1);
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has TargetReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAttachedIndices');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/indices');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::ListAttachedIndicesResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'ConsistencyLevel' => 'x-amz-consistency-level',
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'types' => {
               'TargetReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConsistencyLevel' => {
                                       'type' => 'Str'
                                     },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'TargetReference' => 1,
                    'DirectoryArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListAttachedIndices - Arguments for method ListAttachedIndices on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachedIndices on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListAttachedIndices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachedIndices.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListAttachedIndicesResponse = $clouddirectory->ListAttachedIndices(
      DirectoryArn    => 'MyArn',
      TargetReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      ConsistencyLevel => 'SERIALIZABLE',           # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $IndexAttachments = $ListAttachedIndicesResponse->IndexAttachments;
    my $NextToken        = $ListAttachedIndicesResponse->NextToken;

    # Returns a L<Paws::CloudDirectory::ListAttachedIndicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListAttachedIndices>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

The consistency level to use for this operation.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory.



=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> TargetReference => CloudDirectory_ObjectReference

A reference to the object that has indices attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachedIndices in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

