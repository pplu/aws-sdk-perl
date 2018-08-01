package Paws::AppSync::Resolver;
  use Moose;
  has CachingConfig => (is => 'ro', isa => 'Paws::AppSync::CachingConfig', request_name => 'cachingConfig', traits => ['NameInRequest']);
  has DataSourceName => (is => 'ro', isa => 'Str', request_name => 'dataSourceName', traits => ['NameInRequest']);
  has FieldName => (is => 'ro', isa => 'Str', request_name => 'fieldName', traits => ['NameInRequest']);
  has Kind => (is => 'ro', isa => 'Str', request_name => 'kind', traits => ['NameInRequest']);
  has PipelineConfig => (is => 'ro', isa => 'Paws::AppSync::PipelineConfig', request_name => 'pipelineConfig', traits => ['NameInRequest']);
  has RequestMappingTemplate => (is => 'ro', isa => 'Str', request_name => 'requestMappingTemplate', traits => ['NameInRequest']);
  has ResolverArn => (is => 'ro', isa => 'Str', request_name => 'resolverArn', traits => ['NameInRequest']);
  has ResponseMappingTemplate => (is => 'ro', isa => 'Str', request_name => 'responseMappingTemplate', traits => ['NameInRequest']);
  has SyncConfig => (is => 'ro', isa => 'Paws::AppSync::SyncConfig', request_name => 'syncConfig', traits => ['NameInRequest']);
  has TypeName => (is => 'ro', isa => 'Str', request_name => 'typeName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::Resolver

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::Resolver object:

  $service_obj->Method(Att1 => { CachingConfig => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::Resolver object:

  $result = $service_obj->Method(...);
  $result->Att1->CachingConfig

=head1 DESCRIPTION

Describes a resolver.

=head1 ATTRIBUTES


=head2 CachingConfig => L<Paws::AppSync::CachingConfig>

  The caching configuration for the resolver.


=head2 DataSourceName => Str

  The resolver data source name.


=head2 FieldName => Str

  The resolver field name.


=head2 Kind => Str

  The resolver type.

=over

=item *

B<UNIT>: A UNIT resolver type. A UNIT resolver is the default resolver
type. A UNIT resolver enables you to execute a GraphQL query against a
single data source.

=item *

B<PIPELINE>: A PIPELINE resolver type. A PIPELINE resolver enables you
to execute a series of C<Function> in a serial manner. You can use a
pipeline resolver to execute a GraphQL query against multiple data
sources.

=back



=head2 PipelineConfig => L<Paws::AppSync::PipelineConfig>

  The C<PipelineConfig>.


=head2 RequestMappingTemplate => Str

  The request mapping template.


=head2 ResolverArn => Str

  The resolver ARN.


=head2 ResponseMappingTemplate => Str

  The response mapping template.


=head2 SyncConfig => L<Paws::AppSync::SyncConfig>

  The C<SyncConfig> for a resolver attached to a versioned datasource.


=head2 TypeName => Str

  The resolver type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

