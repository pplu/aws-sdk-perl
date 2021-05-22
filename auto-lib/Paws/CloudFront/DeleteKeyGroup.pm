
package Paws::CloudFront::DeleteKeyGroup;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKeyGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/key-group/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DeleteKeyGroup - Arguments for method DeleteKeyGroup on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKeyGroup2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method DeleteKeyGroup2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKeyGroup2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    $cloudfront->DeleteKeyGroup(
      Id      => 'Mystring',
      IfMatch => 'Mystring',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/DeleteKeyGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the key group that you are deleting. To get the
identifier, use C<ListKeyGroups>.



=head2 IfMatch => Str

The version of the key group that you are deleting. The version is the
key groupE<rsquo>s C<ETag> value. To get the C<ETag>, use
C<GetKeyGroup> or C<GetKeyGroupConfig>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKeyGroup2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

