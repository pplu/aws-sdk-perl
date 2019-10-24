# Generated from default/object.tt
package Paws::AppSync::Resolver;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_PipelineConfig/;
  has DataSourceName => (is => 'ro', isa => Str);
  has FieldName => (is => 'ro', isa => Str);
  has Kind => (is => 'ro', isa => Str);
  has PipelineConfig => (is => 'ro', isa => AppSync_PipelineConfig);
  has RequestMappingTemplate => (is => 'ro', isa => Str);
  has ResolverArn => (is => 'ro', isa => Str);
  has ResponseMappingTemplate => (is => 'ro', isa => Str);
  has TypeName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestMappingTemplate' => {
                                             'type' => 'Str'
                                           },
               'DataSourceName' => {
                                     'type' => 'Str'
                                   },
               'FieldName' => {
                                'type' => 'Str'
                              },
               'ResponseMappingTemplate' => {
                                              'type' => 'Str'
                                            },
               'Kind' => {
                           'type' => 'Str'
                         },
               'PipelineConfig' => {
                                     'class' => 'Paws::AppSync::PipelineConfig',
                                     'type' => 'AppSync_PipelineConfig'
                                   },
               'TypeName' => {
                               'type' => 'Str'
                             },
               'ResolverArn' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RequestMappingTemplate' => 'requestMappingTemplate',
                       'DataSourceName' => 'dataSourceName',
                       'FieldName' => 'fieldName',
                       'ResponseMappingTemplate' => 'responseMappingTemplate',
                       'Kind' => 'kind',
                       'PipelineConfig' => 'pipelineConfig',
                       'TypeName' => 'typeName',
                       'ResolverArn' => 'resolverArn'
                     }
}
;
    return $Params_map;
  }


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

  $service_obj->Method(Att1 => { DataSourceName => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::Resolver object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceName

=head1 DESCRIPTION

Describes a resolver.

=head1 ATTRIBUTES


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



=head2 PipelineConfig => AppSync_PipelineConfig

  The C<PipelineConfig>.


=head2 RequestMappingTemplate => Str

  The request mapping template.


=head2 ResolverArn => Str

  The resolver ARN.


=head2 ResponseMappingTemplate => Str

  The response mapping template.


=head2 TypeName => Str

  The resolver type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

